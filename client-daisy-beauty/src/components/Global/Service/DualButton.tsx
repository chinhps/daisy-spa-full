import Link from "next/link";
import { Button } from "../Form/Button";

export interface IDualButtonProps {
  serviceSlug: string;
}

export default function DualButton({ serviceSlug }: IDualButtonProps) {
  return (
    <div className="fixed flex gap-2 left-0 right-0 bottom-0 p-3 bg-order-service">
      <div className="flex-2">
        <Link href="/blogs/contacts">
          <Button className="btn-bg-2">TƯ VẤN</Button>
        </Link>
      </div>
      <div className="flex-1">
        <Link
          href={{
            pathname: "/booking-calendar",
            query: {
              service_slug: serviceSlug,
            },
          }}
        >
          <Button className="btn-bg-3">ĐẶT LỊCH NGAY</Button>
        </Link>
      </div>
    </div>
  );
}
