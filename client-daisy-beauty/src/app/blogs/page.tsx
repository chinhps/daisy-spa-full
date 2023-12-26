import { blogAPI } from "@/_api/blog";
import BlogItem from "@/components/Global/Blog/BlogItem";
import Breakcrums from "@/components/Global/Breakcrums/Breakcrums";
import Link from "next/link";
import { FiSearch } from "react-icons/fi";

async function dataBlogs(page: number) {
  return await blogAPI.list({ page });
}

export default async function BlogListPage() {
  const blogs = await dataBlogs(1);

  return (
    <div className="container px-5 mx-auto z-10">
      <Breakcrums
        data={[
          { name: "Trang chủ", linkTo: "/" },
          { name: "Tin tức", linkTo: "/blogs" },
        ]}
      />
      <div className="flex items-center mb-2 mt-5 justify-between">
        <h1 className="text-xl font-bold ml-1">THÔNG TIN</h1>
      </div>
      <div className="flex flex-col gap-2">
        {blogs.data.map((blog) => (
          <Link href={"/blogs/" + blog.slug} key={blog.id}>
            <BlogItem name={blog.title} description={blog.content} />
          </Link>
        ))}
      </div>
    </div>
  );
}
