import { SubmitHandler } from "react-hook-form";

export interface IFormBase {
  isLoading?: boolean;
  dataForm: Array<IFormInput>;
  textBtn: string;
  onSubmit: SubmitHandler<any>;
  dataDefault?: object;
  dataOptionRadio?: any;
}

export interface IQueryForm {
  page: number;
  filter: object;
}

export interface IFormInput {
  label: string;
  isRequired?: boolean;
  name: string;
  type: "SELECT" | "INPUT" | "RADIO";
  customType?: "number" | "text" | "date";
  default?: string;
  placeholder?: string;
  validate?: object;
  selects?: Array<{
    label: string;
    value: string;
  }>;
}
