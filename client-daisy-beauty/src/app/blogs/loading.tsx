export default function Loading() {
  return (
    <div className="w-full m-auto flex justify-center items-center gap-2">
      <span className="loading loading-spinner text-error"></span>
      <p className="text-gray-700">Đang tải...</p>
    </div>
  );
}
