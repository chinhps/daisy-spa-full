import { FiChevronsRight } from "react-icons/fi";

export interface IBlogItemProps {
  name: string;
  description: string;
}

export default function BlogItem({ name, description }: IBlogItemProps) {
  return (
    <section className="relative flex flex-col gap-1 p-4 bg-white/50 rounded-2xl">
      <h1 className="font-bold text-[15px] leading-none">{name}</h1>
      <p className="text-xs text-limit text-gray-600">{description}</p>
    </section>
  );
}
