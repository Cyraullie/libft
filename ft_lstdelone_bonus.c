/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelone_bonus.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cgoldens <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/08 16:36:50 by cgoldens          #+#    #+#             */
/*   Updated: 2024/10/08 16:40:40 by cgoldens         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstdelone(t_list *lst, void (*del)(void *))
{
	if (!lst)
		return ;
	(*del)(lst->content);
	free(lst);
}
/*
void del(void *content)
{
    free(content);
}

int main(void)
{
    t_list *lst;

    lst = ft_lstnew(malloc(20));
    if (!lst)
        return (1);

    ft_lstdelone(lst, del);

    return (0);
}
*/
