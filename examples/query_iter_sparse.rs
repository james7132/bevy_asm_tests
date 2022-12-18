use bevy_ecs::prelude::*;

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct A(f32);

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct B(f32);

#[no_mangle]
fn query_iter(mut query: Query<(&mut A, &B)>) {
    for (mut a, b) in &mut query {
        a.0 += b.0;
    }
}
