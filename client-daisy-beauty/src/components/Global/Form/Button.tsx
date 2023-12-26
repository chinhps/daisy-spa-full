"use client";

import React, { ButtonHTMLAttributes } from "react";

interface IButton extends ButtonHTMLAttributes<HTMLButtonElement> {
  isPending?: boolean;
  className?: string;
}

export function Button({ children, className, ...res }: IButton) {
  return (
    <button
      className={`
        btn btn-bg shadow-3xl py-[10px] px-[30px] 
        border-none leading-normal w-full
        text-color-defaut
        whitespace-nowrap
        ${className ? className : ""}
        `}
      {...res}
    >
      {children}
    </button>
  );
}

export function ButtonSubmit({ children, isPending, ...res }: IButton) {
  return (
    <button
      className="
        mt-1
        btn btn-bg drop-shadow-sm py-[10px] px-[30px] 
        border-none leading-normal w-full
        text-color-defaut
      "
      {...res}
    >
      {!isPending ? (
        children
      ) : (
        <>
          <span className="loading loading-spinner"></span>
          Đang thực hiện
        </>
      )}
    </button>
  );
}
