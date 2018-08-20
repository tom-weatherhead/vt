import { Component } from '@angular/core';

@Component({
	selector: 'app-sidebar-test',
	templateUrl: './sidebar-test.component.html' /* ,
	styleUrls: ['./sidebar-test.component.css'] */
})
export class SidebarTestComponent {
	name = 'Angular 4';
	_opened = false;

	_toggleSidebar() {
		this._opened = !this._opened;
	}
}
