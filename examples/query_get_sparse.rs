use bevy_ecs::prelude::*;
use std::hint::black_box;

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct A(f32);

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct B(f32);

#[no_mangle]
fn query_get(mut query: Query<(&mut A, &B)>, entity: Entity) {
    let _ = black_box(query.get_mut(entity));
}
