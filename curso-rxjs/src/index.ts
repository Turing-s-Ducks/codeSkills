
import { Observable, Subscriber } from 'rxjs';

// const obs$ = Observable.create()

const obs$ = new Observable<string>(
    subs =>{
        subs.next("hola");
        subs.next("mundo");

        subs.complete();

        subs.next("hola");
        subs.next("mundo");
    }
);

obs$.subscribe(console.log)