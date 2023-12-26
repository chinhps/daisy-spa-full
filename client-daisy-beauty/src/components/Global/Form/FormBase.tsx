import { IFormBase } from "@/types/form.type";
import { useForm } from "react-hook-form";
import { ButtonSubmit } from "./Button";
import InputCustom from "./InputCustom";
import InputRadios from "./InputRadio";
import SelectCustom from "./SelectCusom";
import { ReactNode, useEffect } from "react";
import { toast } from "sonner";

export default function FormBase(props: IFormBase) {
  const {
    handleSubmit,
    register,
    formState: { errors, submitCount, isSubmitting },
  } = useForm();

  useEffect(() => {
    Object.keys(errors).forEach(function (key, _) {
      toast.warning("Thông báo", {
        description: (errors[key]?.message as ReactNode) ?? "",
      });
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [submitCount]);

  return (
    <>
      <form
        className={`flex flex-col gap-2`}
        onSubmit={handleSubmit(props.onSubmit)}
      >
        {props.dataForm?.map((form, index) => (
          <div key={index}>
            {form.type === "INPUT" ? (
              <InputCustom
                required={form.isRequired}
                label={form.label}
                type={form?.customType || "text"}
                {...register(form.name, form.validate)}
              />
            ) : form.type === "RADIO" ? (
              <InputRadios
                {...register(form.name, form.validate)}
                dataOption={props.dataOptionRadio}
              />
            ) : form.type === "SELECT" ? (
              <SelectCustom
                required={form.isRequired}
                label={form.label}
                {...register(form.name, form.validate)}
                option={form.selects ?? []}
              />
            ) : null}
          </div>
        ))}
        <ButtonSubmit
          type="submit"
          isPending={props.isLoading}
          disabled={props.isLoading}
        >
          {props.textBtn}
        </ButtonSubmit>
      </form>
    </>
  );
}
