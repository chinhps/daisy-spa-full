import { IBaseResponse } from "@/types/response/base.type";
import { ResponseInfor } from "@/types/response/infor.type";

export const inforApi = {
  list: async () => {
    const booking = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/informations",
      {
        cache: "force-cache",
      }
    );
    const res: IBaseResponse<ResponseInfor> = await booking.json();
    return res;
  },
};
