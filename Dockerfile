FROM wwwthoughtworks/build-your-own-radar

WORKDIR /src/build-your-own-radar

COPY ./src/index.html ./src
COPY ./src/util/factory.js ./src/util
COPY ./src/graphing/components/buttons.js ./src/graphing/components
COPY ./src/images/banner-image-desktop.jpg ./src/images
COPY ./src/images/banner-image-mobile.jpg ./src/images
COPY ./src/images/pdf_banner.png ./src/images
COPY ./src/stylesheets/_colors.scss ./src/stylesheets
COPY ./src/stylesheets/_herobanner.scss ./src/stylesheets
COPY ./src/stylesheets/base.scss ./src/stylesheets
COPY ./radar.json ./spec/end_to_end_tests/resources/localfiles/

ENTRYPOINT []
CMD ["./build_and_start_nginx.sh"]
