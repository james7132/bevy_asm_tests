use bevy_ecs::{prelude::*, system::CommandQueue};
use std::hint::black_box;

#[no_mangle]
fn command_queue_apply(command_queue: &mut CommandQueue, world: &mut World) {
    command_queue.apply(world);
}
