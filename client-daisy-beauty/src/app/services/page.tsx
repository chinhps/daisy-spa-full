"use client";

import ServiceItem from "@/components/Global/Service/ServiceItem";
import Breakcrums from "@/components/Global/Breakcrums/Breakcrums";
import Link from "next/link";
import { categoryApi } from "@/_api/category";
import { serviceAPI } from "@/_api/service";
import { useInfiniteQuery, useQuery } from "@tanstack/react-query";
import React, { useEffect, useState } from "react";
import { useInView } from "react-intersection-observer";
import { useSearchParams } from "next/navigation";
import SearchInput from "@/components/Global/Form/SearchInput";

export default function ServiceListPage() {
  const { ref, inView } = useInView();
  const searchParams = useSearchParams();
  const category = searchParams.get("category");
  const [filter, setFilter] = useState<string>("");

  const categoriesQuery = useQuery({
    queryKey: ["categoies"],
    queryFn: () => categoryApi.list(),
  });

  const servicesQuery = useInfiniteQuery({
    queryKey: ["services", category, filter],
    queryFn: ({ pageParam }: { pageParam: number }) =>
      serviceAPI.list({
        page: pageParam,
        filter: {
          category,
          name: filter,
        },
      }),
    initialPageParam: 1,
    getNextPageParam: (lastPage) => (lastPage.paginate?.current_page ?? 1) + 1,
  });

  useEffect(() => {
    if (inView) {
      servicesQuery.fetchNextPage();
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [servicesQuery.fetchNextPage, inView]);

  return (
    <div className="container px-5 mx-auto z-10">
      <Breakcrums
        data={[
          { name: "Trang chủ", linkTo: "/" },
          { name: "Danh sách dịch vụ", linkTo: "/services" },
        ]}
      />
      {/* <section className="sandbox__carousel mt-2">
        <EmblaCarousel
          slides={categoriesQuery.data?.data.map((vl) => {
            return { name: vl.name, image: vl.image, slug: vl.slug };
          })}
        />
      </section> */}
      <div className="flex items-center mb-2 mt-5 justify-between gap-5">
        <h1 className="text-xl font-bold whitespace-nowrap">
          {category
            ? categoriesQuery.data?.data.find((vl) => vl.slug === category)
                ?.name
            : "TẤT CẢ DỊCH VỤ"}
        </h1>
        <SearchInput
          setFilter={setFilter}
          onBlur={(e) => setFilter(e.target.value)}
          onKeyDown={(e) => {
            if (e.key === "Enter") {
              setFilter(e.currentTarget.value);
            }
          }}
        />
      </div>
      <div className="flex flex-col gap-2">
        {servicesQuery.data?.pages.map((group, i) => (
          <React.Fragment key={i}>
            {group?.data.map((service, index) => (
              <Link href={"/services/" + service.slug} key={index}>
                <ServiceItem
                  key={index}
                  name={service.name}
                  description={service.description}
                  image={service.image}
                />
              </Link>
            ))}
          </React.Fragment>
        ))}
      </div>
      <div className="text-center my-5">
        <button
          ref={ref}
          className="text-center text-sm"
          onClick={() => servicesQuery.fetchNextPage()}
          disabled={
            !servicesQuery.hasNextPage || servicesQuery.isFetchingNextPage
          }
        >
          {servicesQuery.isFetchingNextPage
            ? "Đang tải thêm..."
            : servicesQuery.hasNextPage
            ? "Đã hết dịch vụ"
            : "..."}
        </button>
      </div>
    </div>
  );
}
