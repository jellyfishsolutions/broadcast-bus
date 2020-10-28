# broadcast_bus

Broadcast bus defines a global bus that can be used across your application, completly `context` free.

Internally, it uses a `Stream` of `String`, supporting multiple listeners.


## Usage

It is possible to emit a new value on the bus using:

```
BroadcastBus().emit('event');
```

and listening for events (or a specific event):

```

BroadcastBus().getMainBus().listen((event) { 
    // check the event and react
})

...

BroadcastBus().getFilteredBus('specific event').listen((_) {
    //react to the event
}
```

