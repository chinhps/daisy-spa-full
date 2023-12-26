"use client";

import { bookingAPI } from "@/_api/booking";
import { serviceAPI } from "@/_api/service";
import Breakcrums from "@/components/Global/Breakcrums/Breakcrums";
import FormBase from "@/components/Global/Form/FormBase";
import InputCustom from "@/components/Global/Form/InputCustom";
import SelectCustom from "@/components/Global/Form/SelectCusom";
import { IFormInput } from "@/types/form.type";
import { useInfiniteQuery, useMutation, useQuery } from "@tanstack/react-query";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import React, { MutableRefObject, useEffect, useRef, useState } from "react";
import { FieldValues, SubmitHandler } from "react-hook-form";
import { FiChevronLeft, FiChevronsRight } from "react-icons/fi";
import { useInView } from "react-intersection-observer";
import { toast } from "sonner";

const dataFormService: IFormInput[] = [
  {
    label: "Thời gian",
    name: "date",
    type: "INPUT",
    customType: "date",
    isRequired: true,
    validate: { required: "Bạn cần phải chọn ngày" },
  },
];

const dataFormInfor: IFormInput[] = [
  {
    label: "Họ và tên",
    name: "full_name",
    type: "INPUT",
    isRequired: true,
    validate: { required: "Bạn cần điền họ tên" },
  },
  {
    label: "Số điện thoại",
    name: "phone",
    type: "INPUT",
    customType: "number",
    isRequired: true,
    validate: {
      required: "Bạn cần phải điền số điện thoại",
      pattern: {
        value: /^0\d{9}$/,
        message: "Số điện thoại không phù hợp!",
      },
    },
  },
];

export default function Booking() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [step, setStep] = useState<number>(1);
  const [filter, setFilter] = useState<string>("");
  const serviceSlug = searchParams.get("service_slug");
  const [dataService, setDataService] = useState<FieldValues>();
  const modelRef: MutableRefObject<HTMLDialogElement | null> = useRef(null);

  const servicesQuery = useQuery({
    queryKey: ["services_all"],
    queryFn: () => serviceAPI.all(),
  });
  const serviceQuery = useQuery({
    queryKey: ["service", serviceSlug],
    queryFn: () => serviceAPI.getBySlug(serviceSlug ?? ""),
    enabled: !!serviceSlug,
  });

  const bookingMutate = useMutation({
    mutationFn: (data: object) => bookingAPI.create(data),
    onSuccess: (data) => {
      toast.success(data.msg);
      router.push(`/booking-calendar/complete?key=${data.key}`);
    },
    onError: () => {
      toast.warning("Thông báo", {
        description:
          "Có lỗi gì đó đã xảy ra! Vui lòng kiểm tra lại hoặc điện thoại trực tiếp! Cảm ơn bạn",
      });
    },
  });

  const handelSubmitFormFinal: SubmitHandler<FieldValues> = async (data) => {
    bookingMutate.mutate({
      full_name: data.full_name,
      phone: data.phone,
      service_id: dataService?.service_id,
      date_booking: dataService?.date,
      time_booking: "00:00",
    });
  };

  // Search in client
  const filteredData = servicesQuery.data?.data.filter((item) =>
    (item.category?.name + item.name)
      .toLowerCase()
      .includes(filter.toLowerCase())
  );

  return (
    <div className="container px-6 mx-auto z-10">
      <Breakcrums
        data={[
          { name: "Trang chủ", linkTo: "/" },
          { name: "Đặt lịch hẹn", linkTo: "/booking-calendar" },
        ]}
      />
      <div className="relative">
        <h1 className="text-2xl text-center my-4 font-bold">ĐẶT LỊCH HẸN</h1>
        <div className="absolute left-0 top-0 bottom-0 my-auto flex items-center">
          <button onClick={() => setStep(1)}>
            <FiChevronLeft />
          </button>
        </div>
      </div>
      <dialog ref={modelRef} className="modal">
        <div className="modal-box rounded-lg bg-white overflow-visible">
          <h3 className="font-bold text-base text-center uppercase mb-3">
            Chọn loại dịch vụ
          </h3>
          <InputCustom
            onChange={(e) => setFilter(e.target.value)}
            placeholder="Tìm kiếm dịch vụ"
            autoFocus={false}
          />
          <p className="py-4 text-sm text-gray-600">Danh sách dịch vụ</p>
          <div className="flex flex-col gap-4 h-[50vh] overflow-y-auto px-2">
            {filteredData?.map((service, index) => (
              <div key={index} className="flex justify-between gap-1">
                <h2
                  className="text-[14px]"
                  onClick={() => {
                    router.push(
                      "/booking-calendar?service_slug=" + service.slug
                    );
                    modelRef.current?.close();
                    setDataService((prev) => {
                      return {
                        service_id: service.id,
                        ...prev,
                      };
                    });
                  }}
                >
                  {service.category?.name}: {service.name}
                </h2>
                <Link
                  href={"/services/" + service.slug}
                  className="text-xs flex items-center text-[var(--color-pink)]"
                >
                  Xem <FiChevronsRight />
                </Link>
              </div>
            ))}
          </div>
        </div>
        <form method="dialog" className="modal-backdrop">
          <button>close</button>
        </form>
      </dialog>

      {step === 1 ? (
        <>
          <SelectCustom
            label="Loại dịch vụ"
            onClick={() => modelRef.current?.showModal()}
            option={[
              {
                label: serviceQuery.data?.data.category
                  ? serviceQuery.data?.data.category?.name +
                    ": " +
                    serviceQuery.data?.data.name
                  : "Chọn dịch vụ",
                value: serviceQuery.data?.data.id ?? "",
              },
            ]}
          />
          <FormBase
            dataForm={dataFormService}
            onSubmit={(data) => {
              setStep(2);
              setDataService((prev) => {
                return { ...prev, ...data };
              });
            }}
            textBtn="ĐẶT LỊCH NGAY"
          />
          <Link href="/blogs/contacts">
            <p className="text-xs text-center mt-3 text-gray-700">
              Tôi muốn được tư vấn thêm
            </p>
          </Link>
        </>
      ) : (
        <FormBase
          isLoading={bookingMutate.isPending}
          dataForm={dataFormInfor}
          onSubmit={handelSubmitFormFinal}
          textBtn="HOÀN THÀNH"
        />
      )}
    </div>
  );
}
