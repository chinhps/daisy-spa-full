import { serviceAPI } from "@/_api/service";
import Image from "next/image";
import Link from "next/link";
import { FiChevronsRight } from "react-icons/fi";

async function dataServicesPopular() {
  return await serviceAPI.popular();
}

export async function ServiceHomePage() {
  const services = await dataServicesPopular();

  return (
    <main id="service" className="z-10 w-full px-5 mx-auto">
      <div className="flex justify-between mt-10 items-center">
        <h1 className="font-bold text-xl">DỊCH VỤ NỔI BẬT</h1>
        <div>
          <Link
            href="/services"
            className="text-xs flex items-center gap-1 text-gray-7"
          >
            Xem thêm dịch vụ <FiChevronsRight />
          </Link>
        </div>
      </div>
      <p className="text-xs">Các dịch vụ thường được sử dụng</p>

      <div className="flex flex-col gap-4 mt-5">
        {services.data.map((service) => (
          <Link key={service.id} href={"/services/" + service.slug}>
            <Service2
              image={service.image}
              title={service.name}
              description={service.description}
            />
          </Link>
        ))}
      </div>
      <div className="flex justify-center my-5">
        <Link
          href="/services"
          className="text-sm flex items-center gap-1 text-gray-7 py-2 px-5 backdrop-blur-xl rounded-md"
        >
          Xem thêm dịch vụ khác...
        </Link>
      </div>
    </main>
  );
}

function Service2({
  image,
  title,
  description,
}: {
  image: string;
  title: string;
  description: string;
}) {
  return (
    <section className="relative flex rounded-2xl overflow-hidden h-[135px] bg-white/50 shadow-custom ">
      <div className="flex-3">
        <Image
          className="h-full w-full object-cover rounded-br-3xl"
          src={image}
          alt="service daisy"
          width="400"
          height="200"
        />
      </div>
      <div className="flex-1 flex flex-col gap-3 p-5">
        <h2 className="leading-none font-bold line-clamp-1">{title}</h2>
        <p className="text-xs line-clamp-3 text-gray-600">{description}</p>
      </div>
      <p className="absolute right-3 bottom-3 text-[10px] flex items-center gap-1 text-gray-800">
        Xem thêm
        <FiChevronsRight />
      </p>
    </section>
  );
}
