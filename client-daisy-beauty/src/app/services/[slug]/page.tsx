import { serviceAPI } from "@/_api/service";
import Breakcrums from "@/components/Global/Breakcrums/Breakcrums";
import Image from "next/image";
import { notFound } from "next/navigation";
import { BsStarFill } from "react-icons/bs";
import DualButton from "@/components/Global/Service/DualButton";

async function dataServiceDetail(slug: string) {
  return await serviceAPI.getBySlug(slug);
}

export default async function ServiceDetail({
  params,
}: {
  params: { slug: string };
}) {
  const service = await dataServiceDetail(params.slug);
  if (typeof service.data === "undefined") {
    return notFound();
  }
  return (
    <div className="container px-5 mx-auto z-10 mb-20">
      <Breakcrums
        data={[
          { name: "Trang chủ", linkTo: "/" },
          { name: "Danh sách dịch vụ", linkTo: "/services" },
          { name: "Chi tiết" },
        ]}
      />
      <div className="relative rounded-2xl overflow-hidden h-[210px] shadow-3xl mt-3 image-filter">
        {/* <div className="absolute top-2 left-2">
          <div className="flex gap-2 flex-col">
            <Tag text="-30%" />
            <Tag text="Tặng 1 gói gội đầu" />
          </div>
        </div> */}
        <Image
          className="w-full object-cover"
          src={service.data.image}
          width="500"
          height="300"
          alt="banner"
        />
      </div>
      <h1 className="font-bold my-5 text-xl leading-none">
        {service.data.name}
      </h1>
      <div className="flex items-center mb-4 gap-2">
        <p className="text-sm my-auto leading-none mt-[2px]">Đánh giá:</p>
        <div className="flex gap-1">
          {new Array(5).fill(0).map((_, index) => (
            <div className="text-[var(--color-pink)]" key={index}>
              <BsStarFill />
            </div>
          ))}
        </div>
        <p className="text-sm mr-2 my-auto leading-none mt-[2px]">5.0</p>
      </div>
      <h2 className="font-bold text-lg mb-3">Thông tin dịch vụ</h2>
      <DualButton serviceSlug={service.data.slug} />
      <div
        className="text-[15px]"
        dangerouslySetInnerHTML={{ __html: service.data.description }}
      ></div>
    </div>
  );
}

function Tag({ text }: { text: string }) {
  return (
    <div className={`bg-[#3a3a3a94] p-3 rounded-xl w-fit`}>
      <p className="text-white text-sm leading-none mt-[1px] font-medium">
        {text}
      </p>
    </div>
  );
}
