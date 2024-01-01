"use client";

import React from "react";
import useEmblaCarousel, { EmblaOptionsType } from "embla-carousel-react";
import "./embla.scss";
import ServiceGroupItem from "../Service/ServiceGroupItem";

type PropType = {
  slides:
    | Array<{
        name: string;
        image: string;
        slug: string;
      }>
    | undefined;
  options?: EmblaOptionsType;
};

const EmblaCarousel: React.FC<PropType> = (props) => {
  const { slides, options } = props;
  const [emblaRef] = useEmblaCarousel(options);

  return (
    <div className="embla">
      <div className="embla__viewport" ref={emblaRef}>
        <div className="embla__container">
          <div className="embla__slide">
            <ServiceGroupItem
              name="Tất cả dịch vụ"
              image="https://i.imgur.com/99SEDPX.jpg"
              link="/services"
            />
          </div>
          {slides?.map((value, index) => (
            <div className="embla__slide" key={index}>
              <ServiceGroupItem
                name={"Dịch vụ " + value.name.toLowerCase()}
                image={value.image}
                link={"/services?category=" + value.slug}
              />
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default EmblaCarousel;
