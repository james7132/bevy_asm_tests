use bevy_ecs::prelude::*;
use std::hint::black_box;

#[derive(BufferedEvent, Clone)]
pub struct A(f32);

#[no_mangle]
fn event_writer(mut event_writer: EventWriter<A>) {
    black_box(event_writer.write(A(0.0)));
}
