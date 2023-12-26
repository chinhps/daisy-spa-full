import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      backgroundImage: {
        "gradient-radial": "radial-gradient(var(--tw-gradient-stops))",
        "gradient-conic":
          "conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))",
      },
      text: {
        "pink-custom": "var(--color-pink)",
      },
      flex: {
        "2": "0 0 32%",
        "3": "0 0 45%",
      },
      boxShadow: {
        "3xl": "0px 4px 15px 0px rgba(0, 0, 0, 0.10)",
      },
    },
  },
  plugins: [require("daisyui"), require("autoprefixer")],
  daisyui: {
    darkTheme: "light", // name of one of the included themes for dark mode
    base: true, // applies background color and foreground color for root element by default
    utils: true, // adds responsive and modifier utility classes
  },
};
export default config;
