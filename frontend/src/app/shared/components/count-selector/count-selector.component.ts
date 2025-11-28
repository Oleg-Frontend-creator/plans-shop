import {Component, EventEmitter, Input, OnInit, Output} from '@angular/core';

@Component({
  selector: 'count-selector',
  templateUrl: './count-selector.component.html',
  styleUrls: ['./count-selector.component.scss']
})
export class CountSelectorComponent implements OnInit {

  @Input() count: number = 1;

  @Output() onCountChange: EventEmitter<number> = new EventEmitter<number>()

  constructor() {
  }

  ngOnInit(): void {
  }

  onInput(raw: any) {
    let value = Number(raw);
    if (!Number.isFinite(value) || value < 1) {
      value = 1;
    }
    this.count = Math.floor(value);
    this.countChange();
  }

  countChange() {
    this.onCountChange.emit(this.count);
  }

  decreaseCount() {
    if (this.count > 1) {
      this.count--;
      this.countChange();
    }
  }

  increaseCount() {
    this.count++;
    this.countChange();
  }
}
