import { bookingAPI } from "@/_api/booking";
import { inforApi } from "@/_api/infor";
import { formatDate, getInforByKey } from "@/_lib/function";
import Breakcrums from "@/components/Global/Breakcrums/Breakcrums";
import ConnectWithOur from "@/components/Global/ConnectWith/ConnectWithOur";
import { notFound } from "next/navigation";
import Script from "next/script";
import { FiExternalLink } from "react-icons/fi";

async function getInforBooking(key: string) {
  const bookingInfor = await bookingAPI.getByKey(key);
  return bookingInfor;
}

async function inforsWeb() {
  const infors = await inforApi.list();
  return infors;
}

export default async function CompleteBooking({ searchParams }: any) {
  const data = await getInforBooking(searchParams.key);
  const inforWebsite = await inforsWeb();

  if (typeof data.status === "undefined") {
    return notFound();
  }

  return (
    <div className="container px-6 mx-auto z-10">
      <Breakcrums
        data={[
          { name: "Trang chủ", linkTo: "/" },
          { name: "Đặt lịch hẹn", linkTo: "/booking-calendar" },
          { name: "Hoàn thành" },
        ]}
      />
      <h1 className="text-2xl text-center my-4 font-bold">HOÀN THÀNH</h1>
      <div className="my-2 text-[14px] text-center">
        <p>
          - Cảm ơn bạn đã đặt lịch hẹn làm đẹp tại spa của chúng tôi vào ngày{" "}
          <b>{formatDate(data.data.date_booking)}</b>. Chúng tôi sẽ liên hệ lại
          để xác nhận thông tin và đảm bảo chuẩn bị tốt nhất cho bạn.
        </p>
        <p className="font-semibold my-5">
          <a
            className="flex items-center justify-center gap-1 leading-[0]"
            href={
              getInforByKey("link_map", inforWebsite.data)?.value_infor ?? "#"
            }
          >
            Địa chỉ:{" "}
            {getInforByKey("address", inforWebsite.data)?.value_infor ?? "..."}{" "}
            <FiExternalLink />
          </a>
        </p>
        <p>
          - Nếu có điều gì cần hỗ trợ, vui lòng liên hệ qua số{" "}
          <b className="mr-1">
            {getInforByKey("phone", inforWebsite.data)?.value_infor ?? "..."}
          </b>
          hoặc email{" "}
          <b>
            {getInforByKey("mail", inforWebsite.data)?.value_infor ?? "..."}
          </b>
          .
        </p>
        <p className="my-5">Hẹn gặp bạn sớm!</p>
        <p>Trân trọng,</p>
        <p className="font-medium">Daisy Beauty.</p>
      </div>
      <ConnectWithOur />
      <Script id="google-ads">
        {"gtag('config', 'AW-11462352817');"}
      </Script>
    </div>
  );
}
