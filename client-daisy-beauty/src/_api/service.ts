import { objectToQueryParams } from "@/_lib/function";
import { IQueryForm } from "@/types/form.type";
import { IBaseResponse, IBaseResponseDetail } from "@/types/response/base.type";
import { ServiceResponse } from "@/types/response/booking.type";

export const serviceAPI = {
  popular: async () => {
    const data: IBaseResponse<ServiceResponse> = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/services/popular"
    ).then((res) => res.json());
    return data;
  },
  list: async ({ page, filter }: IQueryForm) => {
    const data: IBaseResponse<ServiceResponse> = await fetch(
      process.env.NEXT_PUBLIC_API_URL +
        "/services?" +
        objectToQueryParams({
          page,
          ...filter,
        })
    ).then((res) => res.json());
    return data;
  },
  all: async () => {
    const data: IBaseResponse<ServiceResponse> = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/services/all",
      {
        next: {
          revalidate: 3600,
        },
      }
    ).then((res) => res.json());
    return data;
  },
  getBySlug: async (slug: string) => {
    const data: IBaseResponseDetail<ServiceResponse> = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/services/" + slug
    ).then((res) => res.json());
    return data;
  },
};
