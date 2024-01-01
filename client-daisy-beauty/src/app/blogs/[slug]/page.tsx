import { blogAPI } from "@/_api/blog";
import { formatDate } from "@/_lib/function";
import Breakcrums from "@/components/Global/Breakcrums/Breakcrums";
import ConnectWithOur from "@/components/Global/ConnectWith/ConnectWithOur";
import { notFound } from "next/navigation";

async function dataBlogDetail(slug: string) {
  return await blogAPI.getBySlug(slug);
}

export default async function BlogDetailPage({
  params,
}: {
  params: { slug: string };
}) {
  const blog = await dataBlogDetail(params.slug);
  if (typeof blog.data === "undefined") {
    return notFound();
  }
  return (
    <div className="container px-5 mx-auto z-10 mb-10">
      <Breakcrums
        data={[
          { name: "Trang chủ", linkTo: "/" },
          { name: "Tin tức", linkTo: "/blogs" },
          { name: "Chi tiết" },
        ]}
      />
      <h1 className="text-center uppercase font-bold text-2xl mt-3">
        {blog.data.title}
      </h1>
      <p className="text-center text-sm my-3">
        Ngày: {formatDate(blog.data.created_at)}
      </p>
      <div
        className="text-[15px]"
        dangerouslySetInnerHTML={{ __html: blog.data.content }}
      ></div>
      <ConnectWithOur />
    </div>
  );
}
