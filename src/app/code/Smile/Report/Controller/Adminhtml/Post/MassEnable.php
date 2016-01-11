<?php
namespace Smile\Report\Controller\Adminhtml\Post;

use Smile\Report\Controller\Adminhtml\AbstractMassStatus;

/**
 * Class MassEnable
 */
class MassEnable extends AbstractMassStatus
{
    /**
     * Field id
     */
    const ID_FIELD = 'post_id';

    /**
     * Resource collection
     *
     * @var string
     */
    protected $collection = 'Smile\Report\Model\ResourceModel\Post\Collection';

    /**
     * Post model
     *
     * @var string
     */
    protected $model = 'Smile\Report\Model\Post';

    /**
     * Post enable status
     *
     * @var boolean
     */
    protected $status = true;
}