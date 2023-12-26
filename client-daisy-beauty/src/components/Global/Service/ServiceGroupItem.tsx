import Link from "next/link";
import "./service.scss";

export interface IServiceGroupItemProps {
  name: string;
  image: string;
  link: string;
}

export default function ServiceGroupItem({
  name,
  image,
  link,
}: IServiceGroupItemProps) {
  return (
    <Link href={link}>
      <div
        className={`service-group-background text-white px-5 py-4 text-center rounded-md text-base text-limit`}
        style={{ "--urlServiceGroup": `url(${image})` } as React.CSSProperties}
      >
        {name}
      </div>
    </Link>
  );
}
