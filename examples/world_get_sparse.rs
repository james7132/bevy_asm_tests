use bevy_ecs::prelude::*;
use std::hint::black_box;

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct A(f32);

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct B(f32);

#[no_mangle]
fn world_get(world: &mut World, entity: Entity) {
    let _ = black_box(world.get_mut::<A>(entity));
}
