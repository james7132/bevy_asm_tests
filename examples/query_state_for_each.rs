use bevy_ecs::prelude::*;

#[derive(Component)]
pub struct A(f32);

#[derive(Component)]
pub struct B(f32);

#[no_mangle]
fn query_state_for_each(mut query: QueryState<(&mut A, &B)>, world: &mut World) {
    query.for_each_mut(world, |(mut a, b)| {
        a.0 += b.0;
    })
}
