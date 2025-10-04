use bevy_ecs::prelude::*;
use std::hint::black_box;

#[derive(Message, Clone)]
pub struct A(f32);

#[no_mangle]
fn message_writer(mut message_writer: MessageWriter<A>) {
    black_box(message_writer.write(A(0.0)));
}
