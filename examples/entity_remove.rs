use bevy_ecs::{prelude::*, world::EntityMut};
use std::hint::black_box;

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn entity_remove(mut entity: EntityWorldMut<'_>) {
    black_box(entity.remove::<A>());
}
