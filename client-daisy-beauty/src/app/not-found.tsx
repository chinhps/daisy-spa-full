import Link from "next/link";

export default function NotFound() {
  return (
    <section>
      <div className="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
        <div className="mx-auto max-w-screen-sm text-center">
          <h1 className="mb-4 text-7xl tracking-tight font-extrabold lg:text-9xl text-primary-600 dark:text-primary-500">
            404
          </h1>
          <p className="mb-4 text-3xl tracking-tight font-bold">
            Có gì đó không đúng!
          </p>
          <p className="mb-4 text-sm font-light ">
            Trang bạn đang vào có vẻ như không chính xác! Vui lòng kiểm tra lại!
          </p>
          <Link href="/" className="inline-flex">
            Trở lại trang chủ
          </Link>
        </div>
      </div>
    </section>
  );
}
