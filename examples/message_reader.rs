use bevy_ecs::prelude::*;
use std::hint::black_box;

#[derive(Message, Clone)]
pub struct A(f32);

#[no_mangle]
fn message_reader(mut message_reader: MessageReader<A>) {
    for message in message_reader.read() {
        black_box(message);
    }
}
