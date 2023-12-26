import { IBaseResponse } from "@/types/response/base.type";
import { CategoryResponse } from "@/types/response/booking.type";

export const categoryApi = {
  list: async () => {
    const data: IBaseResponse<CategoryResponse> = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/categories"
    ).then((res) => res.json());
    return data;
  },
};
