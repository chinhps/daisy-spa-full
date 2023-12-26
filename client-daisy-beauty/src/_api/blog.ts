import { IBaseResponse, IBaseResponseDetail } from "@/types/response/base.type";
import { BlogResponse } from "@/types/response/booking.type";

export const blogAPI = {
  list: async ({ page }: { page: number }) => {
    const data: IBaseResponse<BlogResponse> = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/blogs"
    ).then((res) => res.json());
    return data;
  },
  getBySlug: async (slug: string) => {
    const data: IBaseResponseDetail<BlogResponse> = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/blogs/" + slug
    ).then((res) => res.json());
    return data;
  },
};
