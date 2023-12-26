import { forwardRef } from "react";
import { InputHTMLAttributes } from "react";
import "./style.scss";

export interface IInputRadiosProps
  extends InputHTMLAttributes<HTMLInputElement> {
  dataOption: Array<{
    label: string;
    value: string;
    isOpen: boolean;
  }>;
}

export const InputRadios = forwardRef<HTMLInputElement, IInputRadiosProps>(
  function InputRadios({ dataOption, ...rest }, ref) {
    return (
      <div className="grid grid-cols-5 gap-2 my-2">
        {dataOption.map((vl, index) => (
          <label htmlFor={vl.value} key={index}>
            <input
              type="radio"
              id={vl.value}
              ref={ref}
              {...rest}
              value={vl.value}
              style={{ display: "none" }}
              disabled={vl.isOpen}
            />
            <div
              className={`flex flex-col border text-center p-2 rounded-md select-none ${
                !vl.isOpen
                  ? "border-green-200 bg-green-100"
                  : "border-gray-200 bg-gray-50"
              }
          `}
            >
              <span className="text-sm">{vl.label}</span>
              <span className="text-[8px]">
                {vl.isOpen ? "Đã đóng" : "Còn chỗ"}
              </span>
            </div>
          </label>
        ))}
      </div>
    );
  }
);

InputRadios.displayName = "InputRadios";

export default InputRadios;
