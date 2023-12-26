import { InputHTMLAttributes, forwardRef } from "react";

export interface IInputCustomProps
  extends InputHTMLAttributes<HTMLInputElement> {
  required?: boolean;
  label?: string;
  type?: "text" | "number" | "date";
  defaultValue?: string;
}

const InputCustom = forwardRef<HTMLInputElement, IInputCustomProps>(
  function InputCustom({ required, label, type, ...rest }, ref) {
    return (
      <div className="form-control w-full">
        {label && (
          <label className="label justify-start p-1">
            <span className="label-text text-color-defaut">{label}</span>
            {required ? <span className="text-red-500 ml-1">*</span> : null}
          </label>
        )}

        <input
          className="input drop-shadow-sm w-full text-[0.8rem]"
          type={type ?? "text"}
          ref={ref}
          {...rest}
        />
      </div>
    );
  }
);

InputCustom.displayName = "InputCustom";

export default InputCustom;
