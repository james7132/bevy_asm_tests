use bevy_ecs::prelude::*;

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct A(f32);

#[derive(Component)]
#[component(storage = "SparseSet")]
pub struct B(f32);

#[no_mangle]
fn query_iter(mut query: QueryState<(&mut A, &B)>, world: &mut World) {
    for (mut a, b) in query.iter_mut(world) {
        a.0 += b.0;
    }
}
