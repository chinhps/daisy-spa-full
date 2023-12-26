import { IBaseResponseDetail } from "@/types/response/base.type";
import {
  ResponseBooking,
  ResponseBookingInfor,
} from "@/types/response/booking.type";

export const bookingAPI = {
  create: async (data: object) => {
    const booking = await fetch(process.env.NEXT_PUBLIC_API_URL + "/booking", {
      method: "POST",
      cache: "no-cache",
      body: JSON.stringify(data),
      headers: {
        "Content-Type": "application/json",
      },
    });
    const res: ResponseBooking = await booking.json();
    return res;
  },
  getByKey: async (key: string) => {
    const booking = await fetch(
      process.env.NEXT_PUBLIC_API_URL + "/booking/check-booking/" + key,
      {
        method: "GET",
        cache: "no-cache",
      }
    );
    const res: IBaseResponseDetail<ResponseBookingInfor> = await booking.json();
    return res;
  },
};
