"use client";

import { InputHTMLAttributes, useState } from "react";
import { FiSearch, FiX } from "react-icons/fi";

export interface ISearchInput extends InputHTMLAttributes<HTMLInputElement> {
  setFilter: (text: string) => void;
}

export default function SearchInput(props: ISearchInput) {
  const [isOpen, setIsOpen] = useState<boolean>(false);
  return (
    <>
      <div>
        {isOpen ? (
          <div className="relative flex gap-1 text-gray-700 items-center">
            <input
              className="px-3 py-2 w-full drop-shadow-sm text-[0.8rem] rounded-md"
              placeholder="Nhập từ khóa"
              {...props}
            />
            <button
              onClick={() => {
                setIsOpen((prev) => !prev);
                props.setFilter("");
              }}
              className="text-gray-300 absolute right-2"
            >
              <FiX />
            </button>
          </div>
        ) : (
          <div
            className="flex gap-1 text-gray-500 items-center"
            onClick={() => setIsOpen((prev) => !prev)}
          >
            <p className="text-xs">Tìm kiếm</p>
            <FiSearch />
          </div>
        )}
      </div>
    </>
  );
}
