import $ from "jquery";
import select2 from "select2";
import Rails from "@rails/ujs";

const multipleSelect = () => {
  $(".multiple-select").select2();
};

export { multipleSelect };
