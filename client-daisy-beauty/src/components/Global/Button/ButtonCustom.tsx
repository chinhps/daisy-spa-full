import "./custom.css";

export default function ButtonCustom({ children }: { children: string }) {
  return (
    <button className="btn btn-bg button-custom py-[10px] px-[30px] border-none leading-normal">{children}</button>
  );
}
