use bevy_ecs::prelude::*;
use std::hint::black_box;

#[derive(Clone)]
pub struct A(f32);

#[no_mangle]
fn event_reader(mut event_reader: EventReader<A>)  {
    for event in event_reader.iter() {
        black_box(event);
    }
}
