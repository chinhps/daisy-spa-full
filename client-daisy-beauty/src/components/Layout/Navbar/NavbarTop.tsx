import { inforApi } from "@/_api/infor";
import { getInforByKey } from "@/_lib/function";
import { FiMapPin, FiPhone } from "react-icons/fi";

async function inforsWeb() {
  const infors = await inforApi.list();
  return infors;
}

export default async function NavbarTop() {
  const inforWebsite = await inforsWeb();

  return (
    <div className="flex justify-between px-3 py-2 bg-black text-white text-[10px] z-10">
      <div className="flex items-center gap-1">
        <FiMapPin />
        <a
          className="leading-[0]"
          href={
            getInforByKey("link_map", inforWebsite.data)?.value_infor ?? "#"
          }
        >
          {getInforByKey("address", inforWebsite.data)?.value_infor ?? "..."}
        </a>
      </div>
      <div className="flex gap-5">
        {/* <div className="flex items-center">
          <p className="leading-[0]"> VN | EN</p>
        </div> */}
        <div className="flex items-center gap-1">
          <FiPhone />
          <p className="leading-[0]">
            {getInforByKey("phone", inforWebsite.data)?.value_infor ?? "..."}
          </p>
        </div>
      </div>
    </div>
  );
}
