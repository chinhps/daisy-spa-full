"use client";

import Image from "next/image";
import Link from "next/link";
import { useState } from "react";
import { FiMenu } from "react-icons/fi";

const menuList: Array<{
  href: string;
  text: string;
}> = [
  {
    href: "/",
    text: "TRANG CHỦ",
  },
  {
    href: "/blogs/maps",
    text: "ĐỊA CHỈ (GOOGLE MAP)",
  },
  {
    href: "/booking-calendar",
    text: "ĐẶT LỊCH NGAY",
  },
  {
    href: "/blogs/contacts",
    text: "LIÊN HỆ PAGE HỖ TRỢ",
  },
  //   {
  //     href: "/blogs",
  //     text: "GÓP Ý",
  //   },
  {
    href: "/blogs/faqs",
    text: "FAQ",
  },
];

export default function NavbarSilder() {
  const [isOpen, setIsOpen] = useState(false);
  const toggleDrawer = () => {
    setIsOpen((prevState) => !prevState);
  };

  return (
    <>
      <div>
        <div className="text-color-defaut text-xl">
          <button onClick={toggleDrawer}>
            <FiMenu />
          </button>
        </div>
        <div className="drawer">
          <input
            id="my-drawer"
            type="checkbox"
            className="drawer-toggle"
            checked={isOpen}
            readOnly
          />
          <div className="drawer-side z-20">
            <button className="drawer-overlay" onClick={toggleDrawer}></button>
            <div className="menu p-4 w-80 min-h-full bg-white">
              <div className="mx-auto">
                <Image
                  src="/images/logo_dark.png"
                  width={100}
                  height={40}
                  alt="logo daisy beauty"
                />
              </div>
              <ul className="text-gray-800 mt-5">
                {menuList.map((vl, index) => (
                  <li onClick={toggleDrawer} key={index}>
                    <Link href={vl.href} className="py-3">
                      {vl.text}
                    </Link>
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
