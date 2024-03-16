use std::hint::black_box;
use bevy_ecs::prelude::*;

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct A(f32);

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct B(f32);

#[no_mangle]
fn query_iter(query: Query<(&A, &B)>, entities: &[Entity]) {
    for (a, b) in query.iter_many(entities) {
        black_box(a);
        black_box(b);
    }
}
