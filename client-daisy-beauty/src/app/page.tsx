import ButtonCustom from "@/components/Global/Button/ButtonCustom";
import Footer from "@/components/Layout/Footer/Footer";
import Image from "next/image";
import Link from "next/link";
import { FiChevronsUp } from "react-icons/fi";
import { ServiceHomePage } from "./ServiceHomePage";

export default function Home() {
  return (
    <>
      <main className="flex-grow flex relative overflow-hidden justify-center h-[90svh]">
        <div className="flex-grow flex flex-col w-full gap-3 justify-center mb-[120px]">
          <div className="z-10">
            <h1 className="text-center font-text-header leading-snug text-color-defaut">
              DA
              <div className="relative inline-block px-[3px]">
                <span>I</span>
                <Image
                  className="absolute right-0 left-0 top-4"
                  src="/images/standy2_blue2.png"
                  width={50}
                  height={50}
                  alt="daisy icon"
                />
              </div>
              SY <br /> BEAUTY
            </h1>
          </div>
          <div className="flex flex-col gap-[15px] text-color-defaut">
            <div className="relative flex gap-2 flex-col z-10 font-medium text-sm  text-center">
              <p className="leading-none">“Vẻ đẹp ẩn trong mỗi người,</p>
              <p className="leading-none">chỉ chờ chúng ta khám phá!”</p>
            </div>
            <div className="relative z-10 text-center">
              <p className="font-bold">Chăm sóc da - Gội đầu - Nối mi</p>
            </div>
            <div className="flex flex-col gap-[10px] items-center z-10">
              <Link href="/booking-calendar">
                <ButtonCustom>ĐẶT LỊCH NGAY</ButtonCustom>
              </Link>
              <Link href="/services">
                <ButtonCustom>XEM DỊCH VỤ</ButtonCustom>
              </Link>
            </div>
          </div>
        </div>
        <div className="absolute flex bottom-20 right-0 left-0 items-center justify-center z-10 text-color-defaut">
          <a href="#service" className=" flex items-center flex-col  gap-2">
            <div className="text-[20px] animate-bounce">
              <FiChevronsUp />
            </div>
            <p className="text-[12px] text-center">
              XEM THÊM VỀ CÁC DỊCH VỤ KHÁC
            </p>
          </a>
        </div>
      </main>
      <ServiceHomePage />
      <Footer />
    </>
  );
}
