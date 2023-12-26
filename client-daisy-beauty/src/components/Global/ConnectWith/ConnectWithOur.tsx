import { inforApi } from "@/_api/infor";
import { getInforByKey } from "@/_lib/function";
import Image from "next/image";

async function inforsWeb() {
  const infors = await inforApi.list();
  return infors;
}

export default async function ConnectWithOur() {
  const inforWebsite = await inforsWeb();

  return (
    <>
      <h3 className="text-[12px] text-center mb-2 mt-10">
        - Kết nối với chúng tôi -
      </h3>
      <div className="flex gap-2 items-center justify-center">
        <a
          href={
            getInforByKey("link_facebook", inforWebsite.data)?.value_infor ??
            "#"
          }
        >
          <Image
            src="/icons/icons8-facebook.svg"
            width="25"
            height="25"
            alt="icon facebook"
          />
        </a>
        <a
          href={
            getInforByKey("link_zalo", inforWebsite.data)?.value_infor ?? "#"
          }
        >
          <Image
            src="/icons/icons8-zalo.svg"
            width="25"
            height="25"
            alt="icon zalo"
          />
        </a>
      </div>
    </>
  );
}
