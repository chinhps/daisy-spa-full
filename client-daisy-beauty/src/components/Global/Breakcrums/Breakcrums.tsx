import Link from "next/link";

export interface IBreakcrumsProps {
  data: Array<{
    name: string;
    linkTo?: string;
  }>;
}

export default function Breakcrums(props: IBreakcrumsProps) {
  return (
    <div className="text-sm breadcrumbs mt-1">
      <ul>
        {props.data.map((vl, index) => (
          <li key={index} className="text-gray-700 text-xs">
            {vl.linkTo ? <Link href={vl.linkTo}>{vl.name}</Link> : vl.name}
          </li>
        ))}
      </ul>
    </div>
  );
}
