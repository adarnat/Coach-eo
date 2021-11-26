import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['summary', 'details'];

  connect() {
    console.log(this.element);
    console.log(this.summaryTarget);
    console.log(this.detailsTarget);
  }
}
