import { inforApi } from "@/_api/infor";
import { getInforByKey } from "@/_lib/function";
import Image from "next/image";
import Link from "next/link";
import { FiMail, FiMapPin, FiPhone } from "react-icons/fi";

async function inforsWeb() {
  const infors = await inforApi.list();
  return infors;
}

export default async function Footer() {
  const inforWebsite = await inforsWeb();

  return (
    <>
      <footer className="flex flex-col justify-around gap-5 p-5 pt-7 bg-[var(--bg-footer-color)] z-20">
        <div className="flex-1">
          <h2 className="font-bold text-[18px] uppercase mb-3">
            Thông tin liên hệ
          </h2>
          <ul className="flex flex-col text-[14px] gap-2 text-gray-600">
            <li className="flex items-center gap-2">
              <span className="text-red-500">
                <FiMapPin />
              </span>
              Địa chỉ:
              <span>
                {getInforByKey("address", inforWebsite.data)?.value_infor ??
                  "..."}
              </span>
            </li>
            <li className="flex items-center gap-2">
              <span className="text-red-500">
                <FiPhone />
              </span>
              Hotline:
              <span>
                {getInforByKey("phone", inforWebsite.data)?.value_infor ??
                  "..."}
              </span>
            </li>
            <li className="flex items-center gap-2">
              <span className="text-red-500">
                <FiMail />
              </span>
              Mail:
              <span>
                {getInforByKey("mail", inforWebsite.data)?.value_infor ?? "..."}
              </span>
            </li>
          </ul>
        </div>
        <div className="flex-1">
          <h2 className="font-bold text-[18px] uppercase mb-3">
            Thông tin khác
          </h2>
          <ul className="flex flex-col text-[14px] gap-2 mb-2 text-gray-600">
            <li>
              <Link href="/booking-calendar">Đặt lịch ngay</Link>
            </li>
            <li>
              <Link href="/blogs/faqs">Câu hỏi thường gặp</Link>
            </li>
            <li>
              <Link href="/blogs/contacts">Liên hệ hỗ trợ</Link>
            </li>
            <li>
              <Link href="/blogs/chinh-sach-bao-mat">Chính sách bảo mật</Link>
            </li>
          </ul>
          <a
            className="block w-fit"
            href={
              getInforByKey("link_facebook", inforWebsite.data)?.value_infor ??
              "#"
            }
          >
            <Image
              src="/images/facebookchat.png"
              alt="facebook chat daisy spa"
              height="50"
              width="150"
            />
          </a>
        </div>
        <div className="flex-1">
          <h2 className="font-bold text-[14px] uppercase mb-3">Bản đồ</h2>
          <iframe
            className="rounded-2xl"
            src={
              getInforByKey("link_map_iframe", inforWebsite.data)
                ?.value_infor ?? "#"
            }
            width="100%"
            height="170"
            loading="lazy"
          ></iframe>
        </div>
      </footer>
      <div className="p-3 bg-[var(--bg-footer-color)] z-20 pb-7">
        <p className="text-center text-sm">
          © {new Date().getFullYear()} DaisaySpa. All rights reserved. Designed
          and operated by
          <b className="ml-1">Chinh.dev</b>
        </p>
      </div>
    </>
  );
}
