import Image from "next/image";
import NavbarTop from "./NavbarTop";
import { FiUser } from "react-icons/fi";
import Link from "next/link";
import NavbarSilder from "./NavbarSilder";

export default function Navbar() {
  return (
    <>
      <NavbarTop />
      <nav className="flex gap-5 justify-between items-center p-6 z-20">
        <NavbarSilder />
        <div>
          <Link href="/">
            <Image
              src="/images/logo_dark.png"
              width={90}
              height={40}
              alt="logo daisy beauty"
            />
          </Link>
        </div>
        <div className="text-color-defaut text-xl">
          {/* <FiUser /> */}
        </div>
      </nav>
    </>
  );
}
