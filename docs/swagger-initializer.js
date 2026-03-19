window.onload = function () {
  window.ui = SwaggerUIBundle({
    urls: [
      { url: "/api/v1/auth/openapi.json", name: "Auth Service" },
      { url: "/api/v1/products/openapi.json", name: "Product Service" },
      { url: "/api/v1/notifications/openapi.json", name: "Notification Service" },
    ],
    "urls.primaryName": "Auth Service",
    dom_id: "#swagger-ui",
    presets: [SwaggerUIBundle.presets.apis, SwaggerUIStandalonePreset],
    layout: "StandaloneLayout",
  });
};
