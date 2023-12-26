import { SelectHTMLAttributes, forwardRef } from "react";

export interface ISelectCusomProps
  extends SelectHTMLAttributes<HTMLSelectElement> {
  required?: boolean;
  label: string;
  option: Array<{
    label: string;
    value: string | number;
  }>;
  placeHolder?: string;
}

const SelectCustom = forwardRef<HTMLSelectElement, ISelectCusomProps>(
  function InputCustom({ required, label, option, placeHolder, ...rest }, ref) {
    return (
      <div className="form-control w-full">
        <label className="label justify-start p-1">
          <span className="label-text text-color-defaut">{label}</span>
          {required ? <span className="text-red-500 ml-1">*</span> : null}
        </label>
        <select
          className="select drop-shadow-sm text-[0.8rem]"
          {...rest}
          ref={ref}
        >
          {option.map((vl, index) => (
            <option key={index} value={vl.value}>
              {vl.label}
            </option>
          ))}
        </select>
      </div>
    );
  }
);

SelectCustom.displayName = "SelectCusom";
export default SelectCustom;
