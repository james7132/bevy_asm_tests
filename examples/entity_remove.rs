use bevy_ecs::prelude::*;
use std::hint::black_box;

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn entity_remove(world: &mut World, entity: Entity) {
    black_box(world.entity_mut(entity).remove::<A>());
}
