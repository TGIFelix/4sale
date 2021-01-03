import App from "./App.svelte";

const app = new App({
  target: document.body,
  props: {
    name: "world",
  },
});
console.clear();
console.log(
  "Hi stranger, welcome to my markup. If you are looking for something specific you can always contact me, I love to help!"
);

export default app;
