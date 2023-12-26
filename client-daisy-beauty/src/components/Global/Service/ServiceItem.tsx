import Image from "next/image";
import { FiChevronsRight } from "react-icons/fi";
import "./service.scss";

export interface IServiceItemProps {
  name: string;
  description: string;
  image: string;
}

export default function ServiceItem({
  name,
  description,
  image,
}: IServiceItemProps) {
  return (
    <section className="flex flex-row gap-4 p-3 bg-white/50 rounded-2xl shadow-custom">
      <div className="rounded-xl overflow-hidden h-[95px] flex-2">
        <Image
          className="h-full w-full object-cover"
          src={image}
          width="150"
          height="125"
          alt="service"
        />
      </div>
      <div className="flex flex-col gap-1 relative flex-1">
        <h1 className="font-bold text-[15px]">{name}</h1>
        <p className="text-xs text-limit text-gray-600">{description}</p>
        <div className="absolute -bottom-1 right-1 text-[11px] flex items-center">
          <p> Xem thêm</p>
          <FiChevronsRight />
        </div>
      </div>
    </section>
  );
}
